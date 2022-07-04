Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081477E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656977812;
	h=To:Subject:From:Message-Id:Date;
	bh=uqnmTDVlSqjW0q4DEaqlVM7wiKcXw4FIw47D3V+RzQU=;
	b=G4TfGDKnmLOcqG1bWFgrLHiPgpEgn8964MiiFeIAR4tRVK0q2IDpykNG9Bg/wHc0
	M3Cq3G64WJgL+VvMSt35HjHu3LUn4hxZZbCAD/6bNE3+xdAScXhtx98CFJGFXDAt+3e
	+HUKLtaT4xnKHnagXOtlYOIGc6OxDwTIFkiidcfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656977812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uqnmTDVlSqjW0q4DEaqlVM7wiKcXw4FIw47D3V+RzQU=;
	b=NrpP4R5jGxTpY/wGYxKuRyuGmK2JVHIMEnEl2ft8mhJcKJ0M4woQqTf2lwDU6CfJ
	AHytA9V4oSZi06aTXjNTQtJttaOfUc5WzLwxLGISbwcI6WSCcg4TJEEdzCScUYJCkMQ
	I9cfJpeipJD7xYmnvTXjAVk64MLzhZBjzflvWyWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb92eb2a-7ab6ab6c-0209-4a75-94cc-bae80ad77d92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 061a0c836137b72115a2e9f870a42261431e7745c31d42cfa538eadcf5ca6a2d
Date: Mon, 4 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656977812
