Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE8D1FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653680759;
	h=To:Subject:From:Message-Id:Date;
	bh=EHMBNWz7BeAo8anD87k8Kcv5SSzN/1l9ZdplAzGEkoQ=;
	b=Dl6I/LATFYIzHQLWJeqSIN5+B79hIewr5gYPDvFOLRcIHwNxs/c8e9HVslSiwL5m
	sHRonWAXEgUBc+QP2gKq3juCOe/SjdeTqzV4kdCtBP2qR/nSKWe8LedbaxRkv1N/oE8
	2Tm0lyV6vGMij/nSeZzOrjfcjbWQ+0xNMsYAJX34=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653680759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EHMBNWz7BeAo8anD87k8Kcv5SSzN/1l9ZdplAzGEkoQ=;
	b=AzG59RNU2ytxVKUUMqO/nouUtN3Qr8fE56Ef0azHBLGZ61HGfQXzDiWbC/xgU0Vn
	pxEdgNdpnvDkyr2c3+1OtRq3Sa9zklJ5aMQr1Qw3gX6s1OouIlmo9J7jgyrDh5EQ8S4
	XZ9fuGrSeLpFjA17RwO2TuhGR/6rfiw+pPJ5g/II=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181070de1ef-bee57296-6f9e-43f0-a26f-de438b0ee9d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfef862166148e27d3c9fccc950f8c8fb841b4aca006cbd13f415c4816d8c611
Date: Fri, 27 May 2022 19:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653680759
