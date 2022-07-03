Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1539628EF
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656858412;
	h=To:Subject:From:Message-Id:Date;
	bh=/0DJNMKs7K9islMQ3djQx3fFdqCifnxZ76hla2xYId4=;
	b=ZyFS4/ecIm38s8aHFrmBHB3JgH28dvgcXVm9NEmdE/hV5r0NPK9P3V58PvTuB4f+
	Ilr/aJJ9rg054m2nOSrJXPanZ0OxspzrnnmZBxlExhHpeq/n+18EVncRKrdRJofL/4j
	ciYSr2Pn8wAfcgWE8OjzU9ybrL25YzNdXgy3+c9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656858412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/0DJNMKs7K9islMQ3djQx3fFdqCifnxZ76hla2xYId4=;
	b=jcoKvpwofsAMvudbWB3w/Sc0nrXNpoTKUt9/66TAGqWq2QftVD8pmDQ1nPGJzTB0
	DakoP2BNXUxZA3VVD+JS+FCUSmJ6Jn6aCAVKl4Op7o0Vq2zaCXtfsmAaTB/cLpu8dsC
	mpFtD5p+ILrKP7oZYmk3iSkACU6q/d5sVQ6DXR7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c47504de-529d67fb-0566-4800-a3af-76d6f2614330-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba7791bfdc19b3472a079cc82eda2cb0c3683ce75870acd9cf5d6b82acb7614f
Date: Sun, 3 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656858412
