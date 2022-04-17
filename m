Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F148F7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 03:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650166918;
	h=To:Subject:From:Message-Id:Date;
	bh=sZ0ULSY0dItSvpSQP7EqFXqNtRhTafwpqE3bpUQLvUw=;
	b=l/3hvECEgioaj0HshQ7MEZK+zuZ4CKe/ylxRLtzZ+NP36PDBYADbChvoSWVvEpA6
	KD41NbFzt0LEzV7TKD1fIB1KR0AYsbuUOKi7pKH+VaPrDK1XWq/XV0DaSTgMEcYYJHc
	t7yQNbxRYfbC1aujXoKNKKkcN1Lavc5R/AZ/OXyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650166918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZ0ULSY0dItSvpSQP7EqFXqNtRhTafwpqE3bpUQLvUw=;
	b=X5mV+UuTwQEXWnXHKDCbCpnDRaJYu6cAdZIML2WCxKpTqOnVv0s9I+S+X0MM7Vjg
	vOXwC7V++5Xp+g0y8ymbdoJvBfFmuXcch7v5+c7ttpZgshab+jtxZOFFbCgIuO9n8Kr
	LuatBYNQyiiHs+raah7X8VCCQO59bkn4Gkoj7Qjo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180359cec66-8dd17f1b-adf4-43e2-a5a1-ed0c1cd92b3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d96c271c443b1d19f147200bd0cfbc061c4b4b62fb5d1f94c563a69860644d9d
Date: Sun, 17 Apr 2022 03:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650166918
