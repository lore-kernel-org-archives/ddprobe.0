Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1031375
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658758012;
	h=To:Subject:From:Message-Id:Date;
	bh=9x7/BLNPzLUBuyK9wa2ROh2ta9HmKhplSNtYHmw3TQU=;
	b=DdqjFY8/n0sTMd8/tbzzDEcLhUCNIJDvP4HscIQmUhnuVPIU6dNej8iBXBvaTI7b
	EMHkyw784nF0ueNkt3V+VpaP9zE+GjzTCG4ezQ+fThmEbtwulbkiyfTkSzOZK/HVB+l
	C0t/maiVixyQlSWzu0NH6bqZeJ1o3tThLXz9uslc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658758012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9x7/BLNPzLUBuyK9wa2ROh2ta9HmKhplSNtYHmw3TQU=;
	b=KUIp0ms/yzz4SgK21Qhuc6iLIjSx3IB2G+BP7ejusqkK3Xb5aeWMypznVM0vDDnv
	fEN780MnIE36mFy6PalR3d4Z8I0SJ+VAw8O10uTVYuEWsNh0TLV1oiPsmQNvgbwAm0l
	DIe2d9C0rLyNy3awc7PPeAXnwKBUCgs2UzhSdRE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018235ae9d89-7f9c098f-bc27-4a0e-b793-2b2e4e5f1655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d33c4093a17189a29ce32a5f15a20ac7ed1ef9ed714fdfc71c6a9d35fe31993d
Date: Mon, 25 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658758012
