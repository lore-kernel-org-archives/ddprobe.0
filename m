Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A7D180
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658667412;
	h=To:Subject:From:Message-Id:Date;
	bh=hpgrKDHqTPZSMP/eaOjk7R+aoVdmhJDJcHVPj1PQ1us=;
	b=EPjPpnVUsR6NPJVHeoZpaWHX/3SCUk6yf5wQg7rZMcq0txC3AovcOv65POLKVK6d
	lgs1GkC+O3z8uSLC50LjlDUKhc9ccZS9Y1vkU9cgJEpmn+HzvtMJ8MPibAomun3t8uG
	wzLHXu44CMg/8iJLbhG0P7GBVxm1zKGpIUKkdboQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658667412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hpgrKDHqTPZSMP/eaOjk7R+aoVdmhJDJcHVPj1PQ1us=;
	b=NslOpfqtu23LDL4Qcc6k4932aQvNACxxqodrD7HR+KBICshVoBopFtWSgYEqLHry
	Wlp3stkFDih+di/DjpAAmwt7+gbjOIsrn7fch7jgsfTk6e61/2ZUIxUtdzeBc5+SeKy
	JC5WXzzh7m5mxWVY0ZtA5bHLYBB5CndIjGsuDJi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230482b5f-73a06c66-7676-4bc1-acb7-b67bdb98ba13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae87dbb6465dda81b299e63933b842df4d14a376a6dd4344057bec08f1a02e3b
Date: Sun, 24 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658667412
