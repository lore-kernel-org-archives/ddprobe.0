Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336FF3D86
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 21:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654205999;
	h=To:Subject:From:Message-Id:Date;
	bh=j8LXGtg94FZLA/xiV9OFGeefS6P/re0mWdkUivIZbJo=;
	b=Ri98g8r89xrQzH6Zd4xuR5Ds6ic4xHDePft0cs350ZeroirgNiD5cFDCdqetunPx
	PeCIGZ0kBfTSu6kl+zUihBxrWdbv925/Zz2s3DbWDjn0LOWeCABmlTJ/tzT00j6hpkQ
	LtBUBvWozr4iUrGzb9Kn+5ny7dcxuJP/nkXJbzL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654205999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j8LXGtg94FZLA/xiV9OFGeefS6P/re0mWdkUivIZbJo=;
	b=YK/zAEQeUennI7gbw0RxcP6Xy0sWGckkR71EZ19jGGxj93EKYnynaXW+vuVvRp5V
	9t3ONnBGk8kx4mU1XqLO+jtcsTWfA71RdaqecxWcFhwztStclA8fM1B+mZKqE959i1A
	rxJU2x7UYa/Ar3+67K46nuw8ZNm4xcKLySg8FLmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181265c68bc-576970ce-9b20-4234-bf2d-9037f4e9c84e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bdf93efd923753d37677c5556e02f8c6dfce3ef3c163244a1c73207e45a3a82
Date: Thu, 2 Jun 2022 21:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654205999
