Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D49627
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 04:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654143059;
	h=To:Subject:From:Message-Id:Date;
	bh=/2mfJaujCDrChInE/hUkslrMEBdKSw1a+I8Kg9uOEhs=;
	b=YU6qKnEIIxg4utXvPgxqFIstigrb4CYYGaEB2gX0iaVRbvybJrDhkm8ktKsRTfhx
	Uk6gdltzXGCb0K+wxWlC7GMs5p/OAtN48NojpEZcc5DSHFjKk6lK3Uib5dnFF0wDNvC
	fnz4p+GJxzUg86DsfpazQsa2JHZLt+pZspyM1VP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654143059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/2mfJaujCDrChInE/hUkslrMEBdKSw1a+I8Kg9uOEhs=;
	b=B4lBbs535IsCd0+A91eFErWdcqQ9S9FQRK5jwNkMcX2GDxoiq9wlR5WGUBzlrmNR
	WdqAIUWIQ2kGfEiTYftJB6DFIOHmPdHzaDmJ/11vWRo00mTQD4ApTBfyexmdm9VRERK
	deMwj8Mwy6mJXZEMZON/+MQqk69IAJu4j2QxiGqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181229c058b-ace154db-aea5-48fc-b107-3645c9027db8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 932a6b551969bb3ef40d14d226077011a3b408efe05246d34ffa82faeb3a7162
Date: Thu, 2 Jun 2022 04:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654143059
