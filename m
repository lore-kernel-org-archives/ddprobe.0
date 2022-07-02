Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048981FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656788812;
	h=To:Subject:From:Message-Id:Date;
	bh=JP4Mk1O/fCHkHYq6YgYm+qDCpMXhXLQKyjX1DW6Q6NE=;
	b=MoyYMLuFW2AYVnBZ/B9he2nqjD36j+hExjoKWvn81QDMyxvRyZ6pHlEnfcmU1iub
	hDaHQ+A+YmXeaAGnERPG85gROOZljGMtde5pKGri5v9tOGSGrP2mCOOWHGeO7eVzscP
	5NBMuhWG11GJ9xwvy4p+ga8cq5nTlW3iWzI8RCeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656788812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JP4Mk1O/fCHkHYq6YgYm+qDCpMXhXLQKyjX1DW6Q6NE=;
	b=iTPWWM6rRER5V0ojuHwug/FdIbu4Vr/5KXO7SDcLD5Ge+eHfKnTBRRT+9f89l2h6
	1pHaBthau81Z/YJao1i4GU6BbMemVdEjr8c0g2C3eQHiahALu8+oIdBZkSjkXMGHeoL
	7P1+vYUA7a8JoWkcPMUbcHcqTqN4ek/0NVDSneK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c04f0219-29a6d76c-2f3f-430c-b365-e8358c21a71b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92c37a33729a9f0bf448a0de75e6f9795a0dc154183129efd9fa26350bb27d5b
Date: Sat, 2 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656788812
