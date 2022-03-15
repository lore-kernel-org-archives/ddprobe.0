Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F6723DF
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647368784;
	h=To:Subject:From:Message-Id:Date;
	bh=EnuQTFiWRbOUJmdWq1n7Pp1TtrnZgbMHpwCQ8YDFXyU=;
	b=e0yXiGDEreQidKj5XvRr2E+9rK8OX9JsluAy/USIRa4zJX9/3gR0K/4VdbFVBD5s
	kz9pb9QpAAzSk39eKBx81uW4dzm4Xl1QMVb0JLYwyC8rHH7RVhQ+xIlX+vPYQLZ4b4H
	0BoDb08aa0LVDbhBR/1F1A2y57J9cBXAmall0apI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647368784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EnuQTFiWRbOUJmdWq1n7Pp1TtrnZgbMHpwCQ8YDFXyU=;
	b=jFb7+i76U2er0NVP6Hs/HKhX1YpQj5xUr0+rw5dq6Tqep0Iyz9kj4Q+TttK7VyRu
	3IebUl8Ta9lpiIcqsBb3/HiM6o4FBVtDDjCOg/RLdfA+oUjG4KsWR19CotCV8rE4ATR
	EdB2ChxQBbNmhbwPNbWpo59Py7dfEFSVL4wYok+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ed4cb60-1c076e3e-29b4-4e87-a5c5-058cfccf657f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a55115d8170c960f6741f77a6b8d3477d23097df350b1cb3638f08d66a2771f
Date: Tue, 15 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647368784
