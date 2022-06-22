Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65547EA1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 00:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655857439;
	h=To:Subject:From:Message-Id:Date;
	bh=PNhu+Zt6xQ3ENllCKKqynxRGqUTe9jhZos2eu1iUuMM=;
	b=URMSEgUZfkXM0zxWlOEYMSMnMMnAvnsKLXIdkfbZKKG96ladFHbJzaRujP2d9Qzq
	+NNnacD1ZGsAl1V9Uvg6s6SjVv/03eWs1xlv6s/6Qvg0tb2UGmuJ81hVd7HPGavFG+x
	vSWO/R6kO4NSR9aLFXTi7hcJ5Cy23dz5TeTO1cmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655857439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PNhu+Zt6xQ3ENllCKKqynxRGqUTe9jhZos2eu1iUuMM=;
	b=f2n23mAF+oVEXDhkJsLGDVHWbbJa7xUOSjpB2sJgC57OHQVbbWSNvuAmzNzFk0TP
	FaDNsZkFfCETV8O1alh4d1JLj6Gym5qZiV4zhykUdo2W/6ghXdko0Btc58bpMO84Pn4
	z/CaoHhWy+8geuFNz8iSLcQM4BqMGWI7KjkktFuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018188cb6212-007e1d0f-f91e-48a4-bce0-15adb15b6675-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62af35586f9b9c9cb473be6297d590b4f107a33cef6869ed10fe5dd1ae115f56
Date: Wed, 22 Jun 2022 00:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655857439
