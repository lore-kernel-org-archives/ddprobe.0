Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E93E180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647688585;
	h=To:Subject:From:Message-Id:Date;
	bh=0qoBWPNtDI6yq0NmDqfIfAqBB3Ov/eo97a4ISoQxJWM=;
	b=bYvLCl2tEdgZZZTvhd6VcBkMgzWYiFPvSj4GpM60IK5cmUmCNvUkkyo+FDEhCIHU
	XcWQYhzlYpP18MBKIh3aFLxPeGsI5i0wvu7eF8UCc3yoMMMapYzSZVbXYLgM8n1hDhB
	Fe00ZoYZMMtz43zN3vlI2ZX45p+BNcjMk5RRFEK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647688585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0qoBWPNtDI6yq0NmDqfIfAqBB3Ov/eo97a4ISoQxJWM=;
	b=LY5+stSaCmPEVDhIJ0XpWRM3r486qSYcy66LlM+9qQH44hL6rOqilc7OOHdOJVf/
	2Vn3yAxnl9jBZK6Mtob/r5hnr66e5yXR4uXhRCdt2J1tx5T2Ee1vL9j/kSp/lz67Fwr
	I0OZubbZMGtvR1OqqLhf6+p6xe54aVUNZM/TJ5aU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1e48e08-237815cd-71a3-4ddc-b017-735c968bc331-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de6d6f6347ff7aeac63a42ef4022b5ba38673b62d9a6b1a118292ae1bcff7234
Date: Sat, 19 Mar 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647688584
