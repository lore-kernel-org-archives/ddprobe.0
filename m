Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257607E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 22:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648420918;
	h=To:Subject:From:Message-Id:Date;
	bh=boh3GnhRyK4M04BIqsjyXqlN8QAMlA/bXwxULlVc7Zw=;
	b=l8iBSV9oDo3daSP80L3wHHk6ItENV4MbPpA8dJqgYlAkBcxOhxmFEDnTUxk+N7hR
	U89yj8pOLjvbWOciiM0HkXKo+vcWhwBjQAlXWpxCR8rRIn2euPlBV51JLVCfEn1dBQZ
	gFs7CbC6wQcMQuR+A6f+HxjEaJ+Rolue5DpkEplk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648420918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=boh3GnhRyK4M04BIqsjyXqlN8QAMlA/bXwxULlVc7Zw=;
	b=IJ39TKiHAfS6DgGMOku0/YGVs+Li6qtazk4JJrt4g2oqHKkqIT+fs3my5AciYydJ
	xEdxcxuLlse7Szt/adXDNIkGXQbYJfDBA8X3XdW5qc5wzgk5cqpL5nL/UTe0XbUxLbs
	yqrDIzodx6MZn9RKgUMAvzXLyTqqVQCUSag3mWXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd8b140d-95436bda-1332-469f-b9ec-67fc3d8e5859-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0645e4f2cb3ee9f3a65b8eac526192bb8efc889a66fc77aa4655113eb3c98be3
Date: Sun, 27 Mar 2022 22:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648420918
