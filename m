Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509287C
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646735484;
	h=To:Subject:From:Message-Id:Date;
	bh=8vYF0XW6iAK5Up7MpidratRmWZXoUwzfmHhQ64uZDbE=;
	b=CBY3HxudjEhBqCICKUv2qhQA5uMmdB0J4ResCS+hr+pstdF2uT8L9AHJjz08NbmZ
	paqtiZC0WN+3sIMsa2yL1yUy2GhxXV0zBICbKnQHlmz2+1akwX/uQMz5+0HeHiot6yd
	3Kg24mNaOs0WH0GW/Z2yeQILeeTmdHNLft39C0YU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646735484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8vYF0XW6iAK5Up7MpidratRmWZXoUwzfmHhQ64uZDbE=;
	b=A569J5PPfWARReRNLG73I3drYw0d1CA4xSzplaOZXVynp0ThSXqecq5b4b9tozp4
	An+Gk5Y9wXtD1o1zvkx9820b8doeEgTxj32qYlS4F4nqjt247de2wnbgAF+cjg0PCTH
	DgG12zLilx/rdv2qIiDLjQvaq/AYLy4BRmwGnA4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69156741-b573ac8e-7193-4cee-abcf-9b671c97a30b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 608237215e3637c9e7a679f538a907225120b7a6a0258839e48341713fc985d3
Date: Tue, 8 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646735484
