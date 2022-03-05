Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EF27E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646482885;
	h=To:Subject:From:Message-Id:Date;
	bh=/CMn1OvePFjssNpiIPTmOnSsPcTZcEG0T40Ba29W+lM=;
	b=C4KVBqAWmEAdMUhtlQua58JTWfX4+yuBnGBLYbIrsvVM904ixdtSL498G03FoUlM
	dNy2aQ0hRB3jvl83LkOQaqy93ptAC2jaIPCBxf+ZVVXY4as/vzqxsHM4Ml0/eD4dUiz
	FOH19GS7f+NHQUgRRmzXLaNgm6CLDXh4w83xaq8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646482885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/CMn1OvePFjssNpiIPTmOnSsPcTZcEG0T40Ba29W+lM=;
	b=Droqj81JU/tSOulDjHsr1x7Y9LwFqwIEVXBNkwFnQIgs2RHLDlpVGSoFlyY2PEF0
	GIgAifbNNN+hSGkPg4DfTNewDccGM9a3rJCQOOv+s2EUPD/Mk8M4bh4M31yGn6Sp42T
	DC+npfwJImtoacIrFeDahbjm+tELALGg87l/PjS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a070899-6f2962ec-de78-4de7-88f4-32f10fc3e7c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6db48e9384607927ca1cdb2d23ee232bc203eb16a2f66c3d97ab05c6d35a800
Date: Sat, 5 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646482884
