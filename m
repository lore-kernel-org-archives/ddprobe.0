Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5F3137D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659541852;
	h=To:Subject:From:Message-Id:Date;
	bh=dPNs2zVN4NaFWXTQVQCh11vmMkK5QS+gPEb8ldTjkjg=;
	b=X4JobvF8xp9oD2f+rZG8XbRtXbQtFaGVM/2CjLzMIFfiR9VPpdj8DDc6ZKnI6X3n
	oN0F3KHzNxhPvszjwkG4QDDjgBpcHzSFsh3lxoTXWL2DCdmCP3qxc+22akIdvGAM+GH
	DsmAT/EarzV9+qH1Bb/CbOhmadRWRKRL+nIcoTrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659541852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dPNs2zVN4NaFWXTQVQCh11vmMkK5QS+gPEb8ldTjkjg=;
	b=OOBwNFTeeqkSIzNkWPKWjWfu8UkHr3cKX39IcB1vAK+WjV8bVSYj8tkzfcbAIa6q
	7VzAJUUTDIoicdu4Nu8GWgXW3sdDtCerc8Ys964yU4QNchSmsPOozqdxmZe4ifgQ1K3
	eYI5rkPwXW85PETZaHxPvJ8SIEt546cQVfWUvC3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182646711a7-4be602a9-fbfd-4a7a-a3c2-617e6151c47d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0de7e151acca1bf39bc818eafdd2bc54b725bc3afa4fab343b59af75dfc7312e
Date: Wed, 3 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659541852
