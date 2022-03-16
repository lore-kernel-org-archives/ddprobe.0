Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C54468B
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647398484;
	h=To:Subject:From:Message-Id:Date;
	bh=xorXd5vNf+NFv0bsSdm/Mo4nUtgmhScl10MOFVAIxvw=;
	b=kDK5+22Mr3D1hv01+lYNxmIJNa8Ymjvq1+dvrT//eK1eIuQImZ+KUd3VRXb2xcck
	zJpUobzukzaV5KQmz+9tfjCOyPNT2VsQTWzbY8IyE7aGxR1zhJISxVxJ3zi+hzlhsP0
	f2fg/NkWX1Bamuc4QbkIiZ2vG16IVgY5YCNMnrV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647398484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xorXd5vNf+NFv0bsSdm/Mo4nUtgmhScl10MOFVAIxvw=;
	b=eOJfOSDOm6iO7AEQjyNM3/gIJ4S+rK6UaTrsgnTlWDB18/0Tb7id2Cexb98ZdP9h
	G5o1P64pLooRmfOT75rvYE6utAYRXg3i69urg8JYkSGdrauRYeyXDa3PglwKm9t94AD
	STDXf54dfmaTM5Ej4pyD7r+rzr1QAzRxYq3o9MEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9099fb17-7bc5d3e9-262d-4cc9-8b51-007adf3af2e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01ab8de4e09dd1242b35aeebc4dfe39b648b2361bed0e44a2bb2d30f868d47f9
Date: Wed, 16 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647398484
