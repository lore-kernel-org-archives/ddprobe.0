Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D49C7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646397084;
	h=To:Subject:From:Message-Id:Date;
	bh=dFVSPqXDIjzykOJlcpYKMoRCLYgr8KbanOvk0Undpis=;
	b=gStDDeZ3PCk7oeSPeKRDLoZYnE06vpWuluke00I6QwVBed6cY3GGGtenmmpc1utq
	sufpoS3MV2BRaR6V/GtfcTJXBxu5UA6Lzqpn3l8U9luy2By2R51j9CFaLwQLv3iHGDO
	m+f9OpT3DzBCG/osldEJCekor9V18e6lMd2CJKX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646397084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dFVSPqXDIjzykOJlcpYKMoRCLYgr8KbanOvk0Undpis=;
	b=E+WwN5cHJeMiZadd0GBNeweX8DudKDlpyC26P6iMYgcuyorrG9HVkE3z5z0gUIWp
	Dx69G41jcczKk/3MbivgSw7Ru3hDeMgkVfk0A/f2s9R2CVqrl+yV0Mu9LqVkYzW+5ro
	YtECYis6RNu1lZMfgMMCcLdIwj3Q6WO/b2xZy+6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54e9d426-6df2087d-dc43-44fe-9a5a-71788868ec9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a643571148c73aaa7bef1a4c2abd1b16fa388f69d5ca68c6cc857ab78f30b521
Date: Fri, 4 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646397084
