Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482981869
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 20:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651265818;
	h=To:Subject:From:Message-Id:Date;
	bh=YH1cM4/D1cxRR8qftAGb+pzy8T/tsb9eqm/M4j3Px2s=;
	b=QB3QcgBo+jrXUFjV6BouXDqEVoDTLUCw0a/zR//IujG/22KctXXqn6Gs/eui/JEN
	PPGxafZ1OSlC2T2A6JXZgllxLPkkF0bbxnhbTr3MfNjT5GhkKZiAodS79ywrn4Oiuf/
	uIq/3vvGnxSgJ5BMukUGjRWqUCX9TDmssbedtbLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651265818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YH1cM4/D1cxRR8qftAGb+pzy8T/tsb9eqm/M4j3Px2s=;
	b=k/D1XGUXVPmNZtZfWN+FOjnh0e4a5ryKpCCuWfmwvHBfIRH2Vpg6Ke+JJScSMAfv
	Dh7sxhwVinkrQE+p+meu13VYK+cp5B+flWgmxbek8AQYAa2+sCdE8cj8MIkJ4ybwL7u
	XvDKXM+P1RsKublef3f0gzKMwLEU8YwA1jHr2yX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180771ccee2-412f40e5-5906-4acf-ba14-67213384c1b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ff3a91a3f83ab9b6d0145edc5e42cf9b2bb0458e97d079fa1d65d9810ea3fc4
Date: Fri, 29 Apr 2022 20:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651265818
