Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068627B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 16:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650992398;
	h=To:Subject:From:Message-Id:Date;
	bh=BqHTp0ASkERCB7nPkbL/mxrTlu6H5hbcUp2xacJoNN0=;
	b=Ty4OtVO0WKi3lrOq4GnsBwWMRedaDElPkMAjaD/Oo5uLIVS8EBESPJAeA2L++xBo
	fGqPFDFZwv1oii9h3XRRkl6PUiqfbgJ5908reRX7PBHcu7vZ12myQxLKypDhHhVs997
	7avASzTSG34zgbaJWWAmscvyVt//7RgFhnheCrQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650992398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BqHTp0ASkERCB7nPkbL/mxrTlu6H5hbcUp2xacJoNN0=;
	b=BgxjU6ENfZLofZn/VjdQ/z4RKrlS4KOAxFfGEa2Ip5Ru7xTmPjFTwnsEWRZvnkq6
	XPDq9/K+QXNbgOWeyJ8VHtxkYk6rThaCX5Mcl52ZRUKYZvbhB0t7j/La92sDMSSOzoe
	vAsQrlZ+mR7HfCHcjMWyRIPXNkOu3X3JsDv3I6c8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066d0bfea-579314aa-3db1-4cdc-8df9-af120094c173-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ea8eec1d1c6ba8c97fbd98ef1094dceb0118636c508b793e4194ea46fd45d66
Date: Tue, 26 Apr 2022 16:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650992398
