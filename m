Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FB24C8F
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659124252;
	h=To:Subject:From:Message-Id:Date;
	bh=CRNfsOxn9Q9pOneBteqRZAj7rCO1DG1snCap4uxAjlk=;
	b=MSVsqZelNdhdG0+Kp6LKZTPzGG8LBEoj944mIXHmnWrJlXNHJV38hxbJCP3y4qJr
	JJ6R2ikg147gNwJYPQexoq0wX0vaJ+nQp/HMMyTVCCaISe0dzuTI17yLRTtPx/JrdtZ
	UFPUVrGVhUhQH7h2k+uQ71plqEE/VOzU5L0aVEu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659124252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CRNfsOxn9Q9pOneBteqRZAj7rCO1DG1snCap4uxAjlk=;
	b=LsY9LlNvjPp8V1zSvEMmHgGzOdxF8LNC+mrsslRf4Ztc+dx9Mnf4k4ur8Jv7W283
	L+pSFKhlccJ+5P82Yc+0pt5DmpIYqoIm0NUo6Sf6YT0P1KumWxqUpBYGLXhKSZYs5gZ
	toBme6QXUbUz+mu8TiULRlOq/Db8TND5TycYW5Ww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b82ffac-a18ef14e-9dcd-453f-a875-3b6edcefe566-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdf7a769e3419cae1853171dcd20eb11a86178c37548d6b23c9add4adec47460
Date: Fri, 29 Jul 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659124252
