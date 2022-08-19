Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7117B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660889452;
	h=To:Subject:From:Message-Id:Date;
	bh=xIiyDmrrffrKZbRRRsNWRVsRbbVMUR3JIPik70DDCJE=;
	b=ThLudcYZlsRV5N9fYA3iKz/6n02k6v5iALziDjcoWdL105OYMY5MgA/is6Xhb/FW
	Q17snXbCXpvvvwlR0wJJJLQqqaioVrz5721KUkbvRrBucprK5HZzvj51QUPWgwtX8oN
	9SOTOJbyhCbSVdnw9xrkBjBQijw9A1ij2IFqNZ3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660889452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xIiyDmrrffrKZbRRRsNWRVsRbbVMUR3JIPik70DDCJE=;
	b=HAcdg9zDoaJLrv07Gpp+v8Sp6Cvxe6TC7xxh1DhZQ6BAHux7u+InyFXOqWOSk/mz
	4O3GfTKJQYagZxI4yAqeh/jB99TxiGeuYRGAvhKXAB60RrxYfkjmHbVdth761JK/w0E
	ALWWi5nIZmjJIdB97+eQr4Vo3/kn+g9aSZtErbEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4b9d00e-d61323b4-c574-4af5-8098-2d70cda8dc51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb4d1a9ca93e2b9ee19250f3f15aae094c1b2b290a14a7ab011626788b1f8389
Date: Fri, 19 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660889452
