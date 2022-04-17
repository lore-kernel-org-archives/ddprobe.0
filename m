Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE7A29AE
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 19:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650225298;
	h=To:Subject:From:Message-Id:Date;
	bh=41tKTDxf9Q6km3KBT2bUsvohfNgc6+1vNaDeqX9UM/w=;
	b=BYYQrQNqZkWmGNtb9EqapquiBsXGbj01bvwuwDe42RaJGKB5Js5Pp3szSxNCCdEK
	HyLGRvpCZQhlffu1leDU8ahrLc1JkNy6dX7F65K7hBclti8SoG/P4+N7PpNARuYOE/h
	lD+TJNMC7Pz82kzaRlLZu/t2S8/WryaoWVc6IXsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650225298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=41tKTDxf9Q6km3KBT2bUsvohfNgc6+1vNaDeqX9UM/w=;
	b=JXvgNrevcsrZhrFAL8UIFqi/axpoYygZNaN0BrR/jtMNWtxwsyHZmT5ShoKB41S9
	EbzQwdrIZlPQVmhZB2pdYSJaIaB9e5Am6T0FcONFJxR/rgnVwtle4Uhs9HKIm2YlBjX
	eSow0eTCSHsgYwEqBmh1ZfvYtSA/4yCub2dQj0Z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803917bbb4-3b5a1666-e4e6-4a58-a744-047ee592ecd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf5244579361f21491d448ea76cf2190cfddb99d9baeee3ffce0bdeda226cdef
Date: Sun, 17 Apr 2022 19:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650225298
