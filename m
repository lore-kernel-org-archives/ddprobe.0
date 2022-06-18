Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125CF7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 02:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655519579;
	h=To:Subject:From:Message-Id:Date;
	bh=kS9u3pgPukeBt4M+T1us493pvRqIA9kYNIJkcvCSoKM=;
	b=RCwmuA8v2YyGu5lnNZ32dfgHw6Q7HRYZ0OraYEo7nC/p2NpnBJgNRAHdfmIN8sRh
	scwdzxRzLNDBTvUFILG5cJUNOX6kbOKRI/jGvBZUnDFyK1aMgB4SXvTFwSxkNmWgHVk
	V6DyLjxiji/B0kku48PCiFDX1ENrTrPlWa8rPphI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655519579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kS9u3pgPukeBt4M+T1us493pvRqIA9kYNIJkcvCSoKM=;
	b=PjqVN6CO5X3mS9Ew7cnMsSMKfcDKGcsfznkaaJijAxIdZdSohm8oJy1hUzKQDCw5
	OPWiITQQu0g3cR3+FZNeYP38Lh8Np1lLzeF7lE82QFlml45cOUo81kAUVDLp6CNeP08
	ZNbrLppHNSMtkZ36bDB8S7coiqSo1ZAhbDASNN8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174a80ca1-ecf8b9ca-570a-4ead-ba43-6206921611a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ff94f3d02b8e0793585784a9c0aeeb7da16afa9e379aba71fb3783a0a3ff379
Date: Sat, 18 Jun 2022 02:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655519579
