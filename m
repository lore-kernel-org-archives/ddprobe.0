Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D16A2C9D
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 18:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651862878;
	h=To:Subject:From:Message-Id:Date;
	bh=uk77uZeQEXNOezcRbJmYMP9nRyoiFNVnwLWcGNnivEM=;
	b=MtBUK2nFjjIwWQPV9fbhukEHeFwzfeRScm95IdZuk1GkKAYsNirL4OLVywsoGuPJ
	zJtRlhGghkdxLUEjgfJpbZhOnq6PYc14f/eOg/SISiziELljZyrooeK9LjGLJKaxMj/
	CILcr9gChGiA7jgssZQgg0t+7upt7A78koDm9YWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651862878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uk77uZeQEXNOezcRbJmYMP9nRyoiFNVnwLWcGNnivEM=;
	b=ANpQPYl65qOnudttrEntZc9q/LoDrHSv8fnVav0scLLfK75ZkXdtwHGJOKfv84U5
	23NSaaFyCdS3zYkA+xno2V/VgkevrjcPTDckw5jEGxGUgtDVJz7AriEqvYzWQQ9thWB
	g9DNxDSjNg0AL5b1CtdYB9DeYPZTWug7W3Zs6Ux8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ab3389b-a61c941a-0ceb-4680-aafd-d24129337404-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24c6853985a453e1da4647ce45667a3b0619e50c848024f31cbccd0612430bb1
Date: Fri, 6 May 2022 18:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651862878
