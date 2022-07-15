Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A79533ED
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657903612;
	h=To:Subject:From:Message-Id:Date;
	bh=zduq+4KiHnFru80fJH9jFK5HU780kT7kZDeBlPOOCUo=;
	b=ERwQEHwSUGx7NmXPFoMbQY8/n8b0dhoBkvHRwwxb9PRUTT9rzVWxRhBtWjMZVNTK
	5ehdQtBLyg/9tPay+nHA28YHIEFEgZy+GnAeYPYdP+N/7fSQq+JhEH+rfub0r/KX6ek
	wECIyId/ZAfLXkOO54dNK1JT7wO/9Xl8YudwmwWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657903612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zduq+4KiHnFru80fJH9jFK5HU780kT7kZDeBlPOOCUo=;
	b=XeVqUc6//L0iZAzW6o9oEWGYi33GCoSBmTMbW/aWfA13Ef5ApDrVR+eqDM0HojUz
	H5a5vRRF+57whN2Qc2Jhgms94tQJ4Islnx4Z/cRZXdAGprPf+QUCca1iu9I0cssZ4U1
	e+NqGjokxKaMIbAM6s5VzLWnevk/Ejq1UxR/Mj+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202c18177-dc30fd96-b143-46ec-a7f2-49109943c622-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5eb01e142570af28bebf9a7c48875e1b0e9cca4976699ce61617282fd77ccd94
Date: Fri, 15 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657903612
