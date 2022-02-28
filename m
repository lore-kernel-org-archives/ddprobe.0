Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A2448B7
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646045185;
	h=To:Subject:From:Message-Id:Date;
	bh=KufJdl3P2z8vXAE6ZMa1tGK85Ys1xMxn/T1WLrgNhzg=;
	b=E0/m3YnyrBbfCz9O8F1OlEquGvLWZ3QRrM6u5zbDlMxJd0UuUtxjBO6uA1OQZ/xg
	EhaXqZWCWb4VlFxpoimqlWoBU10OHMr2slT9Yl28YrVGDrl8d8ddfpq2pHxtsddyTJQ
	7m+nD4j1u4PkmucoEVwxmZ/QO7pwJ7Z0ziVBZIP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646045185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KufJdl3P2z8vXAE6ZMa1tGK85Ys1xMxn/T1WLrgNhzg=;
	b=bn0jlkhhm6/lu+o/dCII9j2qEbWw/ToCy/wwwSolJKgXmjrVX8UvTzr/ihY9VWqn
	ClJkYHeG1GCo676w5//5n/Rzjz+SldqZFcc37d+shwR/m6UigvopeBXrE/f+91JyWxb
	jqoTjClkwGYVgNqWs4WPZmSVXgQ91haeQDEt1j2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ff042f9-ba49c8b3-2edd-4ba8-94b7-ff54c2811716-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccdd0e5468f03aee79c8e102a0f78ea3caa42a2431f16ab4b6d93bed3eaa51af
Date: Mon, 28 Feb 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646045184
