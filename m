Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F4023A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 02:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650593278;
	h=To:Subject:From:Message-Id:Date;
	bh=/0ARmy0foA8Y7nynIV0/ysAMwbuGkVroSGzf7F3XbIo=;
	b=ajGVgKuDsBkg5foYP4MtG7xi9Uml2Tn9GMQHIw00+6jp25WI+G07KQi+J6zdDi8x
	gfgKfhy+Z/gjYe4xewoLvzpJxI4B8HDA7xL74ID0Y0WIi+06yVWvQp+zyxMYbCdDlQK
	3ZBWP9CYS06k0IM1U7c45ewmXQG6TcaUWMBtLHV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650593278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/0ARmy0foA8Y7nynIV0/ysAMwbuGkVroSGzf7F3XbIo=;
	b=XygeYhRNkYIefmooeo8DFgsetMfSD4HHe2Ai6Bdt65i0LhTWHK3lvI4ss8hCiCTt
	abcWGdgBhZKE/4w6K1BO0gO+zNdaQrB3D6na0e25rV8mO93L3+XW7WZFecpz3rwwc6W
	GWf/fo4yRKvO/g6X/Zf14Ri8AuG6SYINoV9ab8EQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f06a968-62207215-d34e-4742-bfb2-135b98d0c3f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f1657f6f62adb0834ad73897c04255471d073a99d381fedf781ee12729fbc63
Date: Fri, 22 Apr 2022 02:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650593278
