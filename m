Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDFE1103
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660589452;
	h=To:Subject:From:Message-Id:Date;
	bh=LvarzMQedcCRslGbB4xXv3laV4exCFJNdMLpv2+nUAY=;
	b=Ys6V9TVotZbn1dL8WPHAj+Ie7RUJgJf1EIAKJemjC+ZQ0occn4yOiBgyzw6oSeqF
	gGyoZO++Q+5OIh4K9cojRSYNNk7X+4Y0OvMkpLP5WfrvxMvnzkEnkDzNDP7zMx6GgfN
	7wDWKh7pmLRIRnw/aH9R1mS97ninaWGmq4nRuRkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660589452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LvarzMQedcCRslGbB4xXv3laV4exCFJNdMLpv2+nUAY=;
	b=DyC2Fbr0WnSERiXUfxuyaVNmrPqTdLPxf8xuXEYS5PhurVcadn1ZY8kl5vxW+4yg
	YIa6x6Toa5l3QnZWShwWtXQ/rBNzPoNSi+RZQPBT/JMmnSJvG6MUc4mCHCDlJ5KW8q/
	LAWht2oCU0Dqd8/+AIr0CTJyvPyYt6uS2XjBLs/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2d82d4b-a59badbf-b5e9-4187-83f5-14b1c3ddddb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c166c37358eceaa5c96f69ed0b4bdb7a5c526c2dfdc7f9933dc11ae2bdd7c8bc
Date: Mon, 15 Aug 2022 18:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660589452
