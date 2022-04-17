Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D7B639
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 14:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650205498;
	h=To:Subject:From:Message-Id:Date;
	bh=IwX1bQaX0SpzD0xctUTgB7w1lN+dJfXvldP4YP0PpKs=;
	b=kms51f7jER9gOM5YeJQTARhHrVEm6O0+p10CVFy3kwQBZeVhpKRwXw/YAR38pueW
	waAbDa3I1iJtSMrRcyf1pYis8c34CzdxgjnEpg1ngjlSH+hB/8AlWyeDQS1z0epWrLd
	zOeFYCyC99/Hips4tuw18CIP4UEXMd20r8Lyev3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650205498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IwX1bQaX0SpzD0xctUTgB7w1lN+dJfXvldP4YP0PpKs=;
	b=ad0Y4UepNUD+rkFj3ya1qXyqknYJLWOywuUsZgfyeYBcX5jjuCMQ8N1po8QO2UZB
	fxznPf3zeiKSgvLo658q0yO8fKtiHCKVS/OwrwXbzjThmBNRSPQqTqcBjlGGwvkfdJS
	eToqRBvK14Z18R2D3PO0/RAVJ++d1iOe6cZZ5nLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037e99bab-54ef6a98-8b92-45d9-876a-df2356fb8723-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c06c83e69c4d668d77bfd0a93d1fd66408ac9427d5748738a66ad0c7790083ba
Date: Sun, 17 Apr 2022 14:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650205498
