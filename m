Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091D717C3
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 10:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653042539;
	h=To:Subject:From:Message-Id:Date;
	bh=5cYcTNx+IU/OvAp9xIk5hWpZOgB7bcoil3+nEomIK+g=;
	b=la3vPIKo66Ei1e6yMrkRCpB9NzA6LoNURsGXLRyp9oD2fap/uY4HZkKJBSq76Sux
	/fOUF68ydtKqHGjdddfETJN11fDK05HH4h3Z2ckqAP8pBoPB/5ebnCrfVr0L4raYNQV
	5DD/JSWuk1A7be9/bvU4ZQBgnJ4TK7Zci1FD9RvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653042539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5cYcTNx+IU/OvAp9xIk5hWpZOgB7bcoil3+nEomIK+g=;
	b=CMyhq/kpwi2njG88bOo0ShuDVmpgPTKoIJRmZD4xR34ywAnqsnbZeZFbGSrjWkIQ
	IOh5+fC+Q82DcJ/bdYoT/lYZWLnoLBxcpF5ihyD2ZqutuZkFRg0Jm6qA46ZBtjnMySg
	bnv9oFFqQWSMusyfRu4Kh5BMt5Fg1N7Ob1rE3Rbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1036b1c-522d4184-e293-4087-83a7-43947e2091bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a64c5f7f620248569091765fb1bee63b4943a744c49119eb6888d208e6ce4712
Date: Fri, 20 May 2022 10:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653042539
