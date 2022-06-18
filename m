Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163597B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 16:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655570639;
	h=To:Subject:From:Message-Id:Date;
	bh=Iq/4BgM9FEFZi3Hs5b3FMiWA0j8ZV6Bvm68vwGIugAo=;
	b=IYgw6foJqHUaVZRcRBptNy+8nETkOYEwktY1MkZNcJ238eabalQ9LJrc/1em9VnO
	jHCuc2t4WzKmfOz7L+6IhUNtlm4fFXG1jVshTW51sev4AEB/cDuKwZ97vHGwf5Le2mm
	Z/Z7pPGf9T2md5tYWBjgi+qu1OFCaTzSKgeKxAVg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655570639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iq/4BgM9FEFZi3Hs5b3FMiWA0j8ZV6Bvm68vwGIugAo=;
	b=DXX0/jeIRKPg360KjT/q+EXymnlirr18XZ/KwUJdud7H5SXmg3OgcNgoJN7k+MMF
	cR0jKPjLx6r9o6brZN7Tzw018Txu6SfhW6uBlm+htvtSSvJT3TLTo3qfUZucJAk5Hgt
	s2fO02GJBajUqFO0xHcb6MKLRitANTvbJ40NS+i8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177b32985-7ae8173e-7f54-4ad6-b3ff-926cedfe1e1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08ab694dd58720da9dba35792cc7ad46d48ecfc44e3314e057c780b5178f9507
Date: Sat, 18 Jun 2022 16:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655570639
