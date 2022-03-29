Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1061520F4
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 06:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648533838;
	h=To:Subject:From:Message-Id:Date;
	bh=QEJrCAZXHmgJK7yzRSWUO7npbJ4+ZXg8cbfmIJSdWsI=;
	b=DhcYjnDn0AzPa3sXPzC7H072EySo3tIlYwBUdVB53xwxKHiBprVdw5+wGdmwY+d6
	OuNTV8/fx5Vm8lReXU+XPVf8nbAONaQEcxEmngtubPVAdRzZ/I8GH5BMJ/uTZrXM8kH
	LyuF9VHyK9PfRVmmNPBCV3IRzzMdrTb/gY+tdkr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648533838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QEJrCAZXHmgJK7yzRSWUO7npbJ4+ZXg8cbfmIJSdWsI=;
	b=HabKZg0asGbqqQKOQRtM39VkdDnPiLFYgcspYQbYhHIj7jMwss9TJhgD02iW/6Af
	bOoKj3/HA0/qmy948O5NyDKFw+HR+CWv1zXRqmxgO/AZPJ6NWRigZQvL+tZdD7BXlNg
	lyVoDh1n+VBRT0Oc0LFfXNFXB/JX6SCKeUaa1FkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd4461990-7a1b3b53-7ecf-40bb-8f3d-8b06f3f113ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0c0ff80ff017ecc018b4cb1090c8dc175bad53a3168046df58c6bd278f386e5
Date: Tue, 29 Mar 2022 06:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648533838
