Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4299728E9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653071879;
	h=To:Subject:From:Message-Id:Date;
	bh=8//g85T58J95x5cCvih/oyZN+7TAKQX1HKkOfn5M/A0=;
	b=jvBxP1vuHoCHNKGAQRqhvcKOAJa+VbU+eVzykCclA44M2fVjuUs8x57/u5cK0DoW
	WLPYb5xS/3KzGVPClZhF3DETZmTPJqg1fbjfpN3PCcN96s+6yZb9ZiQYdkDaxQknNZL
	aFHcQpoyUCeKoSgG3yk1e7wYxk0CCslWEESk3wyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653071879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8//g85T58J95x5cCvih/oyZN+7TAKQX1HKkOfn5M/A0=;
	b=kkWJkIDwX0wM0VGk8U+gZywVCoaZaIMOtQgDbqHGwDxqxcxn4VzsaA4lXwWM8bgv
	c6FMrdWFJXKlzSFwDo3Ado5db6bFy4Dk7KzgHQGDoWq1yAT6VJAReFSDxf/887AwRXB
	rbjs1HsrCwzYpUYCCI4eo47beFMiOKWmaJOOakC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2c31c9c-8222c577-1b6e-4d1e-97a9-b621943913b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f98f3d255e30426e0c2a4c0673cc17dc41b246dcc6dfe173aca487aad24f48c
Date: Fri, 20 May 2022 18:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653071879
