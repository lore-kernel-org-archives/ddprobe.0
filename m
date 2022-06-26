Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFB07A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656279412;
	h=To:Subject:From:Message-Id:Date;
	bh=k2DhfdkrQxbhqKIAoNC6tFnDZ3hDhcr4LZAfq6H/zK4=;
	b=jx+eRiObjfbn9jZ9tCBo3g8hJGJeea0/qHnE6AgK9PWhdpmvY4LHCabKUM1bzUyb
	PbXF2X94WUtfP9fUKPO5Z6x4JD5VCi8xbJ0Cy8XD0NmDaoPZUKWps1qhuBFjFBzKtZL
	h2YVOh/gbDIEo/9VqlMsXp4jZ/eBeTcaBsg2weY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656279412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k2DhfdkrQxbhqKIAoNC6tFnDZ3hDhcr4LZAfq6H/zK4=;
	b=CntRcJe3X3+L1YkIcsqZcpgKO0DYisKzIH5NYgBBjzdrkmv/7rHujlReKKu3vhoa
	tJaz/CHjS/8SO0B0pWukN06BF2S3V+1A/6gczRD6RbOZfWtDXzt/whCyuyKqdiypjgD
	Wg/AnFAC/NutZ7e8I0d3Vftms+Mft2Ksd8jfqqug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1f22e63-68efe3fb-1e7e-42c2-9c06-a364e47a2494-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c15f0971ed8f2389672cc62ff50954ba28433a92f0281c879f56f80979bf1d65
Date: Sun, 26 Jun 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656279412
