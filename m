Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7281844
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658001412;
	h=To:Subject:From:Message-Id:Date;
	bh=XsIluVm8rEJGzrL1cHQIt2scMwcaWBbpnLAhXRqGbLg=;
	b=H/JHGTE8Cyook2qI2IIlLHjQTKbldVeRBPJzR9wpXcTzSMTzeeu92Pxoie7EqtXK
	boK7FGfu0vUfwlRpldSskD9VreuFN5alqkCpn17FhLXZFx2IVpB8bNnYNqYGsKHRq/E
	TJmKZgDG33XxOnpQ+yUN28pu1D9vz7Dyozxpm/p0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658001412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XsIluVm8rEJGzrL1cHQIt2scMwcaWBbpnLAhXRqGbLg=;
	b=gwRxyTekv36lR28dC84DmBzMLb1ocJQoCge63/MoP/ggVwV96aibx0MVo5RSchb4
	0ZyyM9tpwTSqf5yZQg3s1BcKtQHjJwyHoUfI2zlsn0HD9dw0rRxEc36KJi65rLx4LKG
	tnaNiq8bLsxC0/20NXfMLtbZ2SHm1hbhwBjcZ6AE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820895d115-af5b8f7b-7fc9-4fad-b0d8-e40722091572-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 241e9ca865ca9ed32e7e1bc53636023b56097d591b9d29328686f8e68527dbbc
Date: Sat, 16 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658001412
