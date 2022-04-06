Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1103226
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 20:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649278318;
	h=To:Subject:From:Message-Id:Date;
	bh=DSv8e6f+2PWFq8aE72xK/fTAten9jDuQQtXNFgHJA/c=;
	b=GSVgOtloKaWvddgcbhKy76hwOikbeVaNLnnE69K31ssxxMOIyRJwE9n/RcjEISZR
	vq+Jb2ubQbeKTQUvXkKw8Xdy3nET6S30uzwe6KRGQ+sKPjFY2cRA5j+VqALJNXAJwQF
	w9Pf7fZV0VyKh0ugU2AStbGiyCGy5ntWVln6ytJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649278318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DSv8e6f+2PWFq8aE72xK/fTAten9jDuQQtXNFgHJA/c=;
	b=SV3admRPHGd9jeGXHO8NfjCrtPChH2WdRVvq7OLGTmB+nJOrHTMPhwTMovk5P2Lq
	W7h4yf9D9vGk+tc5IKjGzpNLjuefwY2pr0M7km6LgMHxYpfe6rEG5eSWv5lrj7dgB5c
	rzkeRhBfOWR3+7D1Jg8cLeaWKtarDQua4BYpbIzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018000a5f710-f57bc8d8-d8e5-4428-b88c-b9e2d3b399a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcfc98852704de5c4e8a9c0c935c3af84f304c497d9158fb5ccd9e0cef153105
Date: Wed, 6 Apr 2022 20:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649278318
