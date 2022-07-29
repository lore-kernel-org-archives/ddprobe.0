Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C043D76
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659081652;
	h=To:Subject:From:Message-Id:Date;
	bh=YGo97rkikc6mDMQnaXNkZV5AjL7DlemllCro4bRHwQg=;
	b=dfq4/S1UUtdawUiaBHZzeJk2fyF0PHol19gZvWaTg9ufzRbDuIuV32v+YhvfNgeK
	kQ5VsjOQRB9ppxLeEE6hGz019Bo02rWcccHApMVjpkCvERKKLlGsW8+NFZy9bbeF3wg
	JQ5DTYS63W4f1aJU9KIDi4yTRc3Za56JQ2zY4IEg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659081652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YGo97rkikc6mDMQnaXNkZV5AjL7DlemllCro4bRHwQg=;
	b=ekKQ/sH1INGk+S+kpCYBM39DGtLh67uiHzO5BknKFAKuPHOtPxADKNoKL6zDoJk5
	Vx5troWcefqMwhpf/vpNNs6X2ACY9OVlwwso0j6LImiMx5n7QRJgaqAEHUrnpsHM9ZH
	GLOuL10CBOiqD1ncBHZMn7mfziHP5wltgXunki54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018248f8f918-308aa616-a61f-4651-8a5f-52d332051419-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7acf1960fb933bc2f739521db579db3887b894299e9a2ea4a562b46e112773b7
Date: Fri, 29 Jul 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659081652
