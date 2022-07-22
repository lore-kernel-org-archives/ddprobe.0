Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E8815A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658453812;
	h=To:Subject:From:Message-Id:Date;
	bh=+ZEOQAwzQ1uRLUcoatHHu0zjEcNDFmxPsYmmZVnUEOc=;
	b=WeEsLKxIq9qX8dV4e6VogFsraqBlixaW8HAuNfHFUa8iKFOtSLVIDuD/VYyz2LMS
	3ejFsuBGy/MRJSttYiSaN5s5xcaYvW4uLbfeIt3ToDKFHnma3/3Yi5fdZ6Sd82eTsn5
	/xRqPbtaU/Bc/ZfdsjPrSOHIUx5+mbwWiAOIBOxs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658453812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ZEOQAwzQ1uRLUcoatHHu0zjEcNDFmxPsYmmZVnUEOc=;
	b=jKcX83wo39z2WCE7VWV8Cn3E3f296CI2leXlrPhkBrU3kfe+pc+Z8voVj35vodyI
	TJbTMnbIeUjlIm23v1HohkI063NzN4oB2YLgwovZUdR7wucFTiTy75wI6/FNCV370Tz
	WIZysu3qgWRj9XsER0sVd8iDI3KIVIf6N9J6lbFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182238ce436-db44a67c-e768-4d3d-b3ed-9d74774ba605-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff0a1faaa367ad339091177a053b898684163718c50e204560df720cbab87ae1
Date: Fri, 22 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658453812
