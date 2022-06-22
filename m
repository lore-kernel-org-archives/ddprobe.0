Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8091869
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655921039;
	h=To:Subject:From:Message-Id:Date;
	bh=PeKxbW5m8E9t4pJdV4M/j4szXQ7hdNdtaWaDT+XgPl8=;
	b=YOxGwpN/crK1H4PxPdhdaWNNuqnb2S3yNhhN4q6X98HSUiYLm3xpZi3V/2StV5zi
	w2cgJyNX84aXSWSJploNILIXVhU7rlKpd3o9rtKAoaw05ffJlaQVevpH2ZXf3qWXbJB
	wTplARlTdokzEAlbs4c7Azz2mGERD5MwkJa2s3QY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655921039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PeKxbW5m8E9t4pJdV4M/j4szXQ7hdNdtaWaDT+XgPl8=;
	b=b0bGP8JKWsTHEPUqVHo9675BOeddTZTe58CGHvmQ9Hh64T7Vh9kQPJpJR9hkRpJm
	Nb0YlPa+1EkjCxQ7NKj40meXMfjfb6FfTjpfrKJiG530cIAXZwEkH9OJAB244HPuLJA
	JQNtlcw0NZorb7LJfXrbKazdTfv28RW/08MnRu8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c95d7b6-8f4b95c6-fba8-49fe-9aa2-3b95d0bfd3bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a73c88cbadcff441f9427aadf2df448dae1886003287583d2eba1eec43b0d72a
Date: Wed, 22 Jun 2022 18:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655921039
