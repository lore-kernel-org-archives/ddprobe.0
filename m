Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2ACB4428
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660167053;
	h=To:Subject:From:Message-Id:Date;
	bh=ZLxxlvCWH8iOk9srR+E5+Wpg8DBdJI5oYU2Ykf5jdh0=;
	b=cQnQIgkcLlZzekyRfCd0FbccR732J+aQP3yB4oLWvJIAqNoXNy2LW7/PLTwpkciw
	Nzfu+MdoAmV5R/V3PhWnwt2Kh17PCVhDeKnY4DMiQYAHbXref54UQaO2epoIXoFw6NT
	+0EBxp3BsYZiw48lAWPxgHGFTYN6GjLPVa7mU6LI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660167053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZLxxlvCWH8iOk9srR+E5+Wpg8DBdJI5oYU2Ykf5jdh0=;
	b=YtQnyv/1wRBOv+8tF2orSYRxUOhyJr0RATcHDAzlV7R/uZZibnKiHTinW4EchOMg
	xCShGQutIjt03PnWK9Tk4cL82kImvGv5dfttCqnqBXvET8Bx4PHvNk4gaWmiEEoCqZl
	9N6eGRITqbPdmk5yBzMKGGnP9cAm4eNxQ4nrX6Js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289aadd20-8f18a227-125c-43d9-906c-81688b25d8cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a297280ff4013aa4227c09365879b04a9e4f16b0a469620c796c44848c9db667
Date: Wed, 10 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660167052
