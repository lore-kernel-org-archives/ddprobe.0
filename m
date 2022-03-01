Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC067A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646099484;
	h=To:Subject:From:Message-Id:Date;
	bh=V4arCYHDQ+bKw53/I0M+KqPFe4x0Qo8ylEECPp5jhOI=;
	b=H35MdUnC3GVw/LUf/gwM49cV6/6Kv7CRv20MvxLFfLH1gaj0A0Csw+m5mr1ovHfi
	7tcKhOAu4Oo6ialhZE0uFaUkJQif6hpW/vdA8VrA5T/yhoatv5RzaKPrNV1Gv/+pf7v
	T3DMzN2AKOpo5KJAAQyaEV+dw0brtmHSfy1aoEc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646099484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V4arCYHDQ+bKw53/I0M+KqPFe4x0Qo8ylEECPp5jhOI=;
	b=WYNRxZe7SaQ5iVXbbiukAi5rpxF1rWWbbdZ2UiztqE9JvtPooDZsvVwLGXH1a2Ot
	ykHI15/lQuO+6MKpYt3lKtoPf+QWR/Auax1gz8lLWf7npv57YqArk2QY+KOSirAmoxU
	nLbqilH1BdqaGZ/fhTBc7u+z0KCa8az5UREio4MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f432cd04b-c371d22a-4294-4a9e-9ada-cbf0773e9aed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca249d38f0c7a038db3f6708407943b3ca5f21628b2db5c6d55fc5c4f096918
Date: Tue, 1 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646099484
