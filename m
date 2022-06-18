Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AADE7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 23:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655594099;
	h=To:Subject:From:Message-Id:Date;
	bh=+dgHEFDqgOCJlBxlhHrFC0Zjk19FLUO8iEceVRo5J1E=;
	b=BZDdjWiDdrI7lf7YRiDaZt0QQtM1R3jICPWgIWrnSZZR0yxfpTlWDeg410wHthcr
	g4AlmpaStvBu5tFu43SY93OF9XbgVd8+tcM4DnQER4lTOX0R2fDNc//vdBIa5n3esq6
	Phz5IgoKiw/iPpdxWFaejnZ6wMgekjqR8K86jMvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655594099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+dgHEFDqgOCJlBxlhHrFC0Zjk19FLUO8iEceVRo5J1E=;
	b=JsQx9yXJOxTPWZs/ByrBnH1o7HjPomV+TxAVoVqBIKA4KRIhTwgvsO+rTDsH11UU
	pYPpZQ/op2FeInuKMI1ppU0ewCN9ptHIjPTzd3OfMbT2LtCoTjhihTK5qKaKN+iFfwQ
	twXsBc4KbLjwzD6PO7Wmi3E876GWE5a31brp6Ji8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179192223-2cb286ce-bcf9-4fb0-ab8e-f1dc57c0f57b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a979d0a4f056c4f1b4b5f5b94bc18cffb6ea36046d85a40befdf1bf5afc34b76
Date: Sat, 18 Jun 2022 23:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655594099
