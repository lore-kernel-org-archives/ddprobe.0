Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8FC5C85
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658533012;
	h=To:Subject:From:Message-Id:Date;
	bh=HiWvEJH0mFHowr/8E9C0Unzyr9GTu9R/tTEp9Q9iMU8=;
	b=Gq5sqG+u3yxOKePvrEyOFrv+p0EpBooGq01qgxaY6qAXHJUnZii573nK10/84/J/
	pj2kStXuT/5F1XX/CmbK9xwsKJod/N5eCq3wH1sH4PtPrm/xKtsvm+tFTciKtqnQq1s
	TZsZS1v9HFaBFP38QCZv48JRVcFc6gFfCIviX1vE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658533012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HiWvEJH0mFHowr/8E9C0Unzyr9GTu9R/tTEp9Q9iMU8=;
	b=ZF0GCUW5pEw1kT6IXkTPz77D7tu9UsYVSpiRaqQp71Z4zre1iMciLlH1OTYEp65t
	7fKeg8YE6WgI0sG1hlpABY1Knn+Mal3kjSOm3+H2rGJ89Nu8+ypU/svzw5wPBi8XV2z
	avVFLnhTE3kWK1BarsYg2i/r0GcQtnq6ZzQqKFeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228456390-8a2a1ce6-2090-4506-a41d-ddb54735b1d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 072181bdf878dd484dc86f591334e096b0021891f2cb3c5f03f172719c4cb3a2
Date: Fri, 22 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658533012
