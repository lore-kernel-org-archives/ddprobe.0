Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3627E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646991384;
	h=To:Subject:From:Message-Id:Date;
	bh=D+9tDHmn/Na9Mk9h9D8y1isQhw99+L6bVhckPjtt2GU=;
	b=M0qvIkMSuTWORIoEbvaDx0GJ3Qhv8b+Z2V2g4pGWyYfc0eei6NBx9H3GNP/uGXBD
	H78ycsGVMHMaHClYpKmzS4UzURZHgzCTXc9gr81KUnoZ5rZq/xnmvbSjVeFvz0OlGKR
	m9Ig9k1VgBDtDUcG02o4AS1foZUKBYYI8UgvSRq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646991384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D+9tDHmn/Na9Mk9h9D8y1isQhw99+L6bVhckPjtt2GU=;
	b=RN8hDVnO4QoeQxEMO6VYJxi//Sknr15A6B8syMpesP3QTGLzGbuJpu9gRHQvkzH0
	pBtDHhlRyqez3hSDOZwSXV4XMklAY2gK5y/VN97kH4QJJ2wtJzBA3t0RXJEHz2/Itev
	0lrlCUE+8aasn0lH9+5Z3edK41tPDdyPIAOxTvbI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f785620ab-d8bb5faf-fa48-447a-b03d-32b8697aabdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51444dced9cc74a0d9fff1b3cf00881adbb42a416f178d7ded435cfc9983450c
Date: Fri, 11 Mar 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646991384
