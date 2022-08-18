Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3044434
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660839652;
	h=To:Subject:From:Message-Id:Date;
	bh=oqB2wMbhP9kWQP9QWaz8DMtHppLGiUKIJKpTKV9rAlM=;
	b=YTjPUp1Y2t2Z9Hkga9HCIa139eiXGzxcbNDE4AiOmeVHMaa4gb0gQPJmsr2D8mG3
	S5YAehM6Q+tesXBlT0i+Vrz+umHSOj//gt5KN+Pp1fhUSHJnxj4MW4a47u8wts1y8y0
	okIX+2r/q298QLCX2pvO7+tfv+euY+ZvuCYt9By4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660839652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oqB2wMbhP9kWQP9QWaz8DMtHppLGiUKIJKpTKV9rAlM=;
	b=EXUuIxox1coqgz6pY65mlrdyosQ3j4RgeBoQ1xZDA8zxql/I3NQ2BXhHr2GdJJSD
	yA681rl0jr3dH6zF5WBmTivt2cv93T1dH2EPmELye1NVoHwtHaDlSKebr13VnxwFXNK
	CKEbreDruL6AFXSmzpo+vxatO+pnk0aCBoZWi6G4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1c1ecd0-023871db-5899-4fad-a58d-782a41a9d599-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b4def6c6aba3523b601c1bc764dff49a37fa29fbcdf899eb6d5a73aef5a2348
Date: Thu, 18 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660839652
