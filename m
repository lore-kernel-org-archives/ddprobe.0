Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466742F33
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 02:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646707884;
	h=To:Subject:From:Message-Id:Date;
	bh=pLMLUf5mUg8nrttbDop0QqoMKB3tSlOocDJzJJDbEls=;
	b=RVd9E4SFmFDIDPSLwGLx9+wptQ73ARe4iCrx/FS0QUmits9QrhJW5IpJObmKZnM0
	edjI/F6hU3aW6tVhfSIN2+315uI/F/MrI7qIPaBbY/nyLAByiIgSiQaiEGzIogLYtID
	tMtLJte17xbCyIkasd9sUhAM+SgupHS8tAlIwOLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646707884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pLMLUf5mUg8nrttbDop0QqoMKB3tSlOocDJzJJDbEls=;
	b=bPzYOlsn/FwEkciHrwUhSx3dXhrNBK01YtVVXMPrIMO5ta3i2XRVW/2WyjZQ82L9
	MZ9vEVEqU2xyF1fkrF0ZYvk8zDTfGqPTP1g3VTIWty81BU02NdEesGCgdz+FnDp6qke
	sZ+KDfBOIo3Qq1ZYW2iPg3wHVhEQNSqmAba7ah7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f677042c6-51c10e53-f598-4b6f-86dd-0555fc7f29f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce33cd3f9a2986bdeee7dcdd326aec9f38c12a839882a1416bd79561283ef6c4
Date: Tue, 8 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646707884
