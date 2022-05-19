Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CA47B
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 00:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652919059;
	h=To:Subject:From:Message-Id:Date;
	bh=5OlwaMVGQeO75++cY4IcKLhnsVTlD4n8W2hAAh0z9L4=;
	b=iEUAXSLuVm6TRbRx1gFO/0bj+E2qxA/p8Akus59Vf7h/FSX3VRO0hDS4hjD9Uh3P
	9iFCQcjyaKxufOma70S1TCWz5VqBncyF2cCyxiW6IlnuvrpRQtRoN9+1y3Pj5HJHFkH
	euCh4lvu/Vk2nJ+5SrmlaInCVfEhl/G9UOuYnyS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652919059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5OlwaMVGQeO75++cY4IcKLhnsVTlD4n8W2hAAh0z9L4=;
	b=Ak/ArUJD/extPLkAJVaJqhg6Xly4rezUMYx3nGulZZr50QnrP7jxBa5S3Yg9FNms
	WJx+b9xf8hSZ/he2FlS+M/suwzA1Aj3yuzhuLbpsa57XPVj1zKThDS+7ugxC9oaYEcU
	85lelz/2W1Z9MacAIi1jVNfSkVZAo6vV4Z9NmgLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9a74346-39af9811-0793-4890-a59d-d1db17c3bbd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15dc7039883dcb12e0b045c658d40123097068c15680bac7d709f5853aee3a4e
Date: Thu, 19 May 2022 00:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652919059
