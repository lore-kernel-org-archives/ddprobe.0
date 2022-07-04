Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AED3D99
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656949012;
	h=To:Subject:From:Message-Id:Date;
	bh=K4aPwBdWOcD4eRjEYsbTADL31E6k6MrD3ZhPi1RTMDc=;
	b=jAHgCsdPBsuqXuXnv/wnlDoSb8W/QobpUov8vXEblkJzVEURnWsnyM8iIRfiA4N9
	pab8xKQ0d0thGO09zrMhiXGYkK8pmgzSyV6MqjWgJ0lF4W2SOL9ZTLsPxW0sYQxiGvx
	JPA9g3kzzIYNEKxpMjqqfyRyWyWJRvJjwhio0cjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656949012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K4aPwBdWOcD4eRjEYsbTADL31E6k6MrD3ZhPi1RTMDc=;
	b=YOHWfxrlYVOp0/lD2AzWxtKAtjJ8yW+S5bqVaba2y/14C6DNaElcPIHv9aUKjFUE
	oERn0FuFegXTzOMUjO7sN03U1azweMesGa2eaFMlFSUqRRZhOqTHa1ZsHCILy2aVGjP
	tWCWioR3oT8MLN3XXdLm++mMnWLdio2MW9iqhSw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9db771b-22fc7492-0525-4819-b7be-b71361b440d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e17452029990011a87c4bf60702eec79a5b65572bdcbb4d3c5b5f92294697ba6
Date: Mon, 4 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656949012
