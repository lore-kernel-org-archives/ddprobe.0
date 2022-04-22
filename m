Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B7C23B4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 04:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650601498;
	h=To:Subject:From:Message-Id:Date;
	bh=SgHDjasOy79dH695OpluSfj0srAAIFcnGUBYNpfS9nU=;
	b=frorCL7eIuCDVODNDVOIqoOrTxIuFfvM73XaRJi8TZy3nIb7zMlOM4tADadMP/jR
	9prEXwoR6YUXFEM0J3kcN/uR2S9cPc18T4ITaJ9p1EqalWuJuQQr9YgvSlTUh5NlZyE
	ThClf8bbMGTLyXZHgEwMvWLobo2VIR2UP9PD++Mo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650601498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SgHDjasOy79dH695OpluSfj0srAAIFcnGUBYNpfS9nU=;
	b=K95iriR8RBmPei448jpgdlKh48FPFe6XKniYmJqOTGE7qxp7cSyc2bri/mJghdd/
	thXv46vjHUliFHi8F92HDY0Nl/8qdqfaJlKm8oys0ak8o+3lK+t3KJcMbx0RR7hvtd7
	t8Vix48gXL9SLlXTUfVa7xK8QtgE/JzNC33ue040=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f841733-df083191-e4e0-4f20-bb4f-337355dc714c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f69a9ac3f299838d0538901002acca0d81a622c0bb12038c6c127362567ec60
Date: Fri, 22 Apr 2022 04:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650601498
