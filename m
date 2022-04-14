Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7237B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 09:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649930278;
	h=To:Subject:From:Message-Id:Date;
	bh=km+KRhejkh4eEFQV9g/NhRDTYYTDQ1/PCvNZLfFDCcQ=;
	b=d7wcd440CA6r4qsSsG8ag094IcBxGi4dWYLAGI4W1S/GLW1urlsomyXxCMpPdM0k
	a6soIjdWLjfE5cpgjRaKLSa0YjMMeHX/z0gOeWc5Q4yKSrbvgNu/h45NN1d4JVP8frI
	eFyfvz8p28Im+YuIedRNvJ/Izej3bvx71eVJh3nw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649930278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=km+KRhejkh4eEFQV9g/NhRDTYYTDQ1/PCvNZLfFDCcQ=;
	b=RTM6PMdx9KtrOrKkCTbHcgUSgA3ZTGZp4bGuNTzB3dnfFrff1o8kNwXX+vhby9ty
	Hcim0w82Hj8LHvkNeZ7Y/Nt2q93gV1GSYb4tsm9ffVdB/6As8eU7sfOqk+J5gRSN3T2
	xb/UiVkYAFRViOJu5x8J0I9oD+YJiCaTLPyOF6kE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180278215a1-3da75a16-178a-4c48-b56e-b20f6add5795-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35d1679def9cdb2e1d1267b867a2d673f05cd53be3ef291e144595bfba286d06
Date: Thu, 14 Apr 2022 09:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649930278
