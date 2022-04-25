Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007527C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 13:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650893638;
	h=To:Subject:From:Message-Id:Date;
	bh=/L4Hlx6Zd8i5TdMGnEDMmzGDgW9Fzg14kVodmPRs0QA=;
	b=I6JVmvF7bRF4P/uspO/UB9tmyKwhqMLVVRFaE9ZZDxBtWNr+Dyx2EiCkOSkVZeto
	X7dAGT+vK3of87NeuObotzQMhfgEMrqeTSyivKJPICrj5FAjM0nmhnj8g4dEUvy6py2
	pQQmRwfSzjMEeQsf2cRq6qQAhkYm6RktQ/Wim9sU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650893638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/L4Hlx6Zd8i5TdMGnEDMmzGDgW9Fzg14kVodmPRs0QA=;
	b=PpoUYbDtqoWj7l79sLsBzOzvhSmUDqNG7XYlf4ut4+HcbeIaXuq2qQriNJ5/APZt
	Tfehwz3e7nJrPYacKAP/nblSliEogUo1T6+vXmFhJQw7UeX8uyrRJ7Saz4he5FPsa1l
	FcWy8oD3F7y96KDJRIQfRm3Z5sh7PZbMn7r6ulR8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060edcaa5-130d8ede-ade8-4a32-90a4-aead7b141624-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12e06778587584b9a57df639e3c4cd240ca5bd1cdaf07a2fd8a052d9d7e55e9e
Date: Mon, 25 Apr 2022 13:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650893638
