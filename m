Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B29320D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658952652;
	h=To:Subject:From:Message-Id:Date;
	bh=2coZgpI91PAKQpkY4tfdbvMEObp7vIr0UWIg5okP3mg=;
	b=cJrlCkgUccddCrzoAkLBUAs9AHiJygrPl3USm3MqFt1z5hMyv+3ECB1p2LePBqvt
	tO1dLVgD5FvIBq01TD4cdHhsQrgFjwsMHMKiKqZVSb+bCecsGQ0u7vkd6bJjuqSCdCW
	0f3abtCrU4qG01ye2eMMu1p4Khy9Z2fD188Q//5Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658952652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2coZgpI91PAKQpkY4tfdbvMEObp7vIr0UWIg5okP3mg=;
	b=fngvJEH7SpQdvT3XBwUXwryzNPl0x2gLihtSdgoFWtg8G4Xo0jdwxTpTUnt6p8p1
	8GU/63NQhOcNtlOnOQ+OBEYJmuFpsGI556TRlhCGFSw9ZIuvizreUKVC6gYu6oAoZxn
	T84XTv3LJLm2Uhd7WBTDNZNQshM7Rg9lNUCCd9Ks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241489725-801d8dd6-41af-4d34-b75a-ce0ff58426db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f60de1fcfab879456dc686ac2d33b2259b2318209dac3deb2d6e3fcf6e2381d
Date: Wed, 27 Jul 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658952652
