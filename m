Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980CF4352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647525084;
	h=To:Subject:From:Message-Id:Date;
	bh=AwCEDphV7LTYcVTrM1IT+ybzMkJD2GIxGoujq/ZixnM=;
	b=IPnZg+9x/lq3wRlsfdeowE6Mbaasljb7+cHCGWyYZjJUWh6s2tsUAEezohdCeqO3
	NbLG98JhotSxd27UgUFn5aV3PmE0vRtmLOkdxugyLOmP4fCmGYADrEjlUsA42oaLfI8
	Mwdw0bLMkfc4IAVNrZKfcjvuzgB2ZOIMibrJx7RM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647525084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AwCEDphV7LTYcVTrM1IT+ybzMkJD2GIxGoujq/ZixnM=;
	b=D46Qi9x3gxtQsk53nNuPxaQ++9VAgUhf4gnazuUOiwBm1rSswkiZhZohcwf7aLiz
	7FIaVYScm3yTwj4Z6NahypkQn2+K547pUPHXxnAlTfKF3Xtgvs2Er9AA306TePswXaY
	25gqnBdjYTsgGdkdmJeY/Cnc8OfZPTbNSjz8H15E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9825be29-c6f2a64f-2b3d-48f1-a3c8-b4a712064abf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7d79c6fb2eac024b14bc8adde45903cbb16552579126017f717c2a3794d6b08
Date: Thu, 17 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647525084
