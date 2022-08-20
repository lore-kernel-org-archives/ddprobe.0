Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750F02F51
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661028652;
	h=To:Subject:From:Message-Id:Date;
	bh=eh4AEAKo66VJiEAIYX3aRvC5I+3AOmYlvLLqcFCxqgI=;
	b=VRj5+6oroYkoSWFKl0aDmZAWUmUHVfMbvQUWinQQ6FZ7IgvDFLgT67bzVvh26qo0
	uc61qifYNXiYiNGVEBOKDHdPOgaZ5c/Je4mVjdppwtvy7VtrJEE9Kl0FdLCL4LZ0700
	2hut0mJu9oCyL+ZD/yloHbxpUUUk4KLt5HVS5xI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661028652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eh4AEAKo66VJiEAIYX3aRvC5I+3AOmYlvLLqcFCxqgI=;
	b=cMn+xttgEX2CPF3k4nw0KXEcFOOUdoEGqsFtGgtySZ9j/d1o8ra/hXddbQ70oAuR
	i5GJ0khj51hf9juuGXPeiVItvDKCR2O7Ne9xmYeep5WERKFPM4VDe6dfjO7cEEqdYm5
	xzNqnHKrSpexAU7Fw++f1MW+DpfP+G6A5mML036M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bd05d623-a42794fa-b10e-4f94-833a-3343fbe651b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12789d3b0be015f7c39af4b7613d1e337c0aae0ef855b519e4140faf713e5b7f
Date: Sat, 20 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661028652
