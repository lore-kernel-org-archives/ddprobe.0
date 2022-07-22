Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F359B15A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658495812;
	h=To:Subject:From:Message-Id:Date;
	bh=CEmybI6EJ6SzuibhNXQ8y1EbHMrrGO/SlSc8vAMg98E=;
	b=EPhnFZdGKsljy4FskqLlPeGhBUZ3YKdahoQZCjJ7mj7NjLwah1woQA3K5zJ5VTsr
	hCxBqaPVfXFakhUq6973Cx34FDvpRcs3sPY2BEXPot0NZtp/9EqzE+L5Ao4RUpmuaWM
	7TFjGJLJWiLr+aB3mUr1BHFr0xmhlmd/Yn0B2IhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658495812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEmybI6EJ6SzuibhNXQ8y1EbHMrrGO/SlSc8vAMg98E=;
	b=Qytk4zvDHX5LKfZ2k9NYYamShdh3Iyf3dvcq1n2jl+PrJXXuLVr8BMby0tcj7CXM
	6FYG99gPPdKlz2H0t7zMl/zlNjVJ8vc0WkbGlAjhO/AQWKR23au5MXeaxpCcyn4Ff+U
	5JPP9S3Rypcidd7xfXBzkmE1ARsAF5aFot0XSNCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182260dc2ae-d7c2b59f-1d72-4a1f-a6fb-743da1e5ee42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be4919822255c7102788ae66192d66323fc3e05dd228dc5f9a59077cf4532fb6
Date: Fri, 22 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658495812
