Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E703363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 07:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652598419;
	h=To:Subject:From:Message-Id:Date;
	bh=+r63cdKVhBGdfKdstyPzX6o4xQqT77FTqVhjX0oo2T4=;
	b=hdRufNEzcEkiP0FuGuBRq+5x/GcXxqHxtf8Jo9jQ8prMPLpgcthDWZorDt6l/P5T
	KdCWO01cDgO8Hj7lX+4dCJ1vjd5KAHGBHXveqSUbZrX0tO0lwqM/7+hmxE81o27yjf5
	7zxYPLGWOB0rMGZQ48+QQE9vmpu60zCYVaPMksbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652598419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+r63cdKVhBGdfKdstyPzX6o4xQqT77FTqVhjX0oo2T4=;
	b=cs/8NHho8setVqpRQPnyI7hFh9ztzmi2Udrf8jQ5Z/nYibHjxmSAlrUbaBj0B2lw
	hPlBFm1PoBhU2aZ9F8sHL9MrUstnjU+PuRy0tzAE+G2tL3odVYMzReC6OXy/dobwWDG
	FQ6Pz/ph3OSfwPgFRsCnbOlteQAWXfWZjcDfFaVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c68aafad-8f6cb155-c4f0-4613-9cd4-6400fba525ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19754eb34269beca4f528fa2ec5d4ca9e0e7d9cfd3461942b182d31f37839686
Date: Sun, 15 May 2022 07:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652598419
