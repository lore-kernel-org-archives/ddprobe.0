Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8979B3674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646650884;
	h=To:Subject:From:Message-Id:Date;
	bh=4GWkDP3IQ1+mUJX5s4PfNA7A5LC40bQ1TFvUp+tRkQo=;
	b=ZxSov3d05mnNHqdpgLN6k+luTCtnHQuY+uFy86dQC/t5q7dro+0ngBcfLtflYboU
	14hDCFx370uY0hf/fbcff+XK6RdxTIyPfAbazorGMrTIdDUzkCwAz2RMdeZ0DWoky15
	9ZUNs+d8yJAkEXxtclhVNjxH2a0FTDT5WdUF1Iy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646650884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4GWkDP3IQ1+mUJX5s4PfNA7A5LC40bQ1TFvUp+tRkQo=;
	b=PQ5/ytZ/pafIpQLDgESM752qpK2VrBaCd+HoJGQQTV4JGOTY+nnHP9bAeW2dqzwV
	StWUcBPKlkZy2SgD6jI6eLo5EjXaWoJQ6fUxYgU5cZxeu/JAGW2AHOTvKai0wFJUaH4
	u+X1kWLdpnP/1V0B66KekI5g6o4aEdY9aomuPx50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f640a827a-d1f82f50-a901-4a50-9bfa-3db925b2a9cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 035b207fc0285b7f54b81b93a23f12ab042425e3f8fa0c022efbd6e388a9ec50
Date: Mon, 7 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646650884
