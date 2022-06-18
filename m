Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347647B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 00:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655510519;
	h=To:Subject:From:Message-Id:Date;
	bh=Yz2W+LHpc/axv2qVvaZWWCyugb6DP3RsawhXJAmuhj8=;
	b=f1jFMVIJPp4Zuw+tQVnrysUkIVUzaoKfmN3UE7C6Z4YKiWvMhqUAuvZplWZbdexR
	nMiCzyFiCnrwNSAV3evS6PLxPibMSPz2VHpm2HJr2YAbVMp1uh6aXqayG5WmnWSNu7s
	eseEKGcMvLVfILJp9FgAihdx7sQh9JJ2AReWuhA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655510519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yz2W+LHpc/axv2qVvaZWWCyugb6DP3RsawhXJAmuhj8=;
	b=D/sjrl2VjNDk+O8mmwIPP1++MfuKkBSLnmZBhhvBRJh3Z8oGpBAmEwKSQVS+tSTH
	nhkQbwt8QpsoKxGxDsRGd3lmUReqjgAb0G+rZ/DKWj/5gT1G4r3vxz91tRbqVCb2Yw3
	2klXdxbWwzeVHhePdj0j1K0f9myCGbJzRQKHG40s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181741dcdf1-f0ad59d6-a53c-45b0-91a9-4e07ca4ca3e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe3a319acd4a7dc68640550d3d64f831e5355de1aee1ef91e0532d88e7d8e906
Date: Sat, 18 Jun 2022 00:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655510519
