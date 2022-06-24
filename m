Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7B11FC8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 02:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656039413;
	h=To:Subject:From:Message-Id:Date;
	bh=/T2VX3lnJdJlch55LFpZjW7tDiRB4hSMM8oComyLQcs=;
	b=CTpCGYQzaERFtBb1tGKdOsAv0zy8hCd0AwfKeKXHH8jaB1S26RBTYsw7ozvmGASV
	hWSB+Kp4bPIPQQvx+lXmjbGSC+Tvi31j7KPAvh6dUTsHNS1zjh1/nFs1/7bI4qOU+hE
	6k7vKbv8evxAQGY03S3g/tzRreONv3zBC05kFuJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656039413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/T2VX3lnJdJlch55LFpZjW7tDiRB4hSMM8oComyLQcs=;
	b=C7HlGZBuR6hKX34czwZcuLgs85HWsP7QpEKsojl/6fbhy+exSSia7c+9cSC0ojlX
	JowfCzkcKHc0n+a9cS+ajDPlzzJxW3+xQa97PidHg0iYgf9AIDLhbQIlbb4BnvFS1il
	sLFFkjNp02G8A4+XFDM7HSGuMyQigg2DvtsKPe08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193a4147f-6f726626-2612-483f-b973-b8ee80d15585-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb17edf9fa4e52af8b95d559e8a1663ab2b434c6076dd174507db34aebdaa954
Date: Fri, 24 Jun 2022 02:56:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656039412
