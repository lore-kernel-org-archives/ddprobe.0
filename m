Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417C37E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 12:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658580412;
	h=To:Subject:From:Message-Id:Date;
	bh=V4zRr+pLzFWef3xP/Uq9D3qDi/5z+0QvDLol1RkI53A=;
	b=d52nuObvzHH9H6XhLJTG1yS9XNfWyRwu9on6HNuVbqOCwAlPitcNhGRrW2euLzMn
	6wCfsQ2mawvN5JYwlHw048sdEfLrLtS+U17VfttonWj79QqCvbVT54mtUCFhgJM4jBD
	NsfdY/QIpKDTF51AcTLjw35JWWhIoeKjDoiRyD4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658580412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V4zRr+pLzFWef3xP/Uq9D3qDi/5z+0QvDLol1RkI53A=;
	b=Rw/VWE7SD/+aFlT3QVuEy99u4ofJyg2EbD8qWW6G7olAAo3BQfT/fe1W/uHT3x0N
	OFq7k8n91IztxZq2NERQvdXLUUA5VoSF8w4vgWPCRixirjBMBjdAY+awyEBmC8YHRpd
	tKtMJz235lVH7n+m80TEoQLehVUV/Rh7woy6Taik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b18a793-336aa26b-be15-4c57-ac2f-de6cd1689664-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cce41e1351f54612d9fa1f1c11af1dced918b1879560c762758f6e2b0768e26a
Date: Sat, 23 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658580412
